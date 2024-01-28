"""
Integration tests for Operation creation
"""


def test_create_operation_sucessfully(client):
    """Check if an operation was created"""
    response = client.post(
        "/operation",
        headers={"X-Token": "coneofsilence"},
        json={
            "id": "550e8400-e29b-41d4-a716-446655440000",
            "user_id": "550e8400-e29b-41d4-a716-446655440000",
            "operation_type": 1,
            "invoices": [],
            "currency": "USD",
            "creation_dt": "2024-01-27",
            "status": 1,
            "finish_date": "2024-02-10",
        },
    )
    assert response.status_code == 200
    assert response.json() == {"message": "Your operation was created"}
