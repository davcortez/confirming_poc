import os

import boto3
from boto3.resources.base import ServiceResource


class Config:
    DB_REGION_NAME = os.getenv("DB_REGION_NAME")


def initialize_db() -> ServiceResource:
    ddb = boto3.resource("dynamodb", region_name=Config.DB_REGION_NAME)

    return ddb
