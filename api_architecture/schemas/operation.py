from datetime import date
from enum import Enum
from typing import List
from uuid import UUID

from pydantic import BaseModel


class OperationStatus(int, Enum):
    OPEN = 1
    CLOSED = 2


class OperationType(int, Enum):
    CONFIRMING = 1


class Operation(BaseModel):
    id: UUID
    user_id: UUID
    operation_type: OperationType
    invoices: List[str]
    currency: str
    creation_dt: date
    status: OperationStatus
    finish_date: date
