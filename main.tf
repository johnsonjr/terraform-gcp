terraform {
  backend "consul" {
    address = "#35.205.119.213:8500"
    path    = "remote_state/hsbc-terraform_state"
  }
}

provider "google" {
  credentials = "${file("silicon-bivouac-204111-8224e7c4d7a4.json")}"
  project     = "silicon-bivouac-204111"
  zone        = "europe-west1-b"
}




// create pub/sub topic "dataflow-input-topic"
resource "google_pubsub_topic" "dataflow-input-topic" {
  name = "ctu_dataflow-input-topic"
}

// create pull subscription "myInputSub1" for topic "dataflow-input-topic"
resource "google_pubsub_subscription" "myInputSub1" {
  name  = "myInputSub1"
  topic = "${google_pubsub_topic.dataflow-input-topic.name}"
  ack_deadline_seconds = 10
}



// create pub/sub topic "dataflow-output-topic"
resource "google_pubsub_topic" "dataflow-output-topic" {
  name = "dataflow-output-topic"
}

// create pull subscription "myOutputSub1" for topic "dataflow-output-topic"
resource "google_pubsub_subscription" "myOutputSub1" {
  name  = "myOutputSub1"
  topic = "${google_pubsub_topic.dataflow-output-topic.name}"
  ack_deadline_seconds = 10  
}




