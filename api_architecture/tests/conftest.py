import os
import sys

import pytest
from fastapi.testclient import TestClient
from main import app

project_root = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
sys.path.insert(0, project_root)


@pytest.fixture
def client():
    client = TestClient(app)
    yield client
