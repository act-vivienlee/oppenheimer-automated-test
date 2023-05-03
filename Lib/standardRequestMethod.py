import requests


def post_request_service(url, data_body):
    header = {
        "Content-type": "application/json",
    }
    return requests.request("POST", url, headers=header, data=data_body)


def get_request_service(url):
    header = {
        "Content-type": "application/json",
    }
    return requests.request("GET", url, headers=header)
