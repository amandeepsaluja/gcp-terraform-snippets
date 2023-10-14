import argparse
import apache_beam as beam

from apache_beam.options.pipeline_options import PipelineOptions


def run_pipeline():
    # Define your Dataflow pipeline options, such as project, region, and temp_location
    options = PipelineOptions.from_dictionary(
        {
            "project": "gcp-practice-project-aman",
            "region": "us-central1",
            "temp_location": "gs://dataflow-bucket-gcp-practice-project-aman/temp",
            "runner": "DataflowRunner",
            "job_name": "write-to-bq-via-template",
        }
    )

    sample_data = [
        {"id": 2501, "message": "Via GCS"},
        {"id": 2601, "message": "Awesome"},
    ]

    # Define a schema for your BigQuery table
    table_schema = "id:INTEGER,message:STRING"

    # Write the data to a BigQuery table
    table_spec = "gcp-practice-project-aman:raw_layer.dataflow_pub_sub"

    with beam.Pipeline(options=options) as p:
        # Create a PCollection from the sample data
        data = p | "Create" >> beam.Create(sample_data)

        output_data = data | "Write to BigQuery" >> beam.io.WriteToBigQuery(
            table=table_spec,
            schema=table_schema,
            create_disposition=beam.io.BigQueryDisposition.CREATE_IF_NEEDED,
            write_disposition=beam.io.BigQueryDisposition.WRITE_APPEND,
        )


if __name__ == "__main__":
    run_pipeline()
