# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

identity_token "azurerm" {
  audience = ["api://AzureADTokenExchange"]
}

deployment "development" {
  inputs = {
    identity_token = identity_token.azurerm.jwt

    regions = ["East US"]

    client_id       = "170aed2e-f69b-483b-9c01-c0c9ff4d7a7b"
    subscription_id = "ab742d50-7daa-4ca6-9c43-fe1be6e28a9e"
    tenant_id       = "0e9caf50-a549-4565-9c6d-4dc78e847c80"
  }
}

deployment "production" {
  inputs = {
    identity_token = identity_token.azurerm.jwt

    regions = ["East US", "West US"]

    client_id       = "170aed2e-f69b-483b-9c01-c0c9ff4d7a7b"
    subscription_id = "ab742d50-7daa-4ca6-9c43-fe1be6e28a9e"
    tenant_id       = "0e9caf50-a549-4565-9c6d-4dc78e847c80"
  }
}
