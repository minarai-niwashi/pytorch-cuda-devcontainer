#!/bin/bash

sh -c "$(curl -LsSf https://astral.sh/uv/0.6.1/install.sh)"
uv sync --frozen --dev
