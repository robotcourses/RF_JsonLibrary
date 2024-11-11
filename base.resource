*** Settings ***
# Bibliotecas
Library  RequestsLibrary
Library    JSONLibrary
Library    Collections

# Recursos
Resource    resources/sessions/jsonplaceholder_session.resource

# Routes
Resource    resources/routes/get_jsonplanceholder.resource
Resource    resources/routes/post_jsonplanceholder.resource

