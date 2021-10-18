# Overview

This is a sample API for file uploads for the purpose of testing NUS Fintech Society's Insurtech frontend, before the actual API is completed.

It is deployed on heroku: https://sample-image-upload-api.herokuapp.com/uploads

# Usage

This API supports only GET and POST methods.

## GET /uploads

A `GET` request to https://sample-image-upload-api.herokuapp.com/uploads should return:

```JSON
{
  "message": "Hello!"
}
```

## POST /uploads

You can do a `POST` request to the API endpoint. When sending a file over, the API endpoint should return the file size.

Params for POST requests:
| Field | Type | Description |
| ------ | ---- | ----------- |
| **img** | File | The desired file to upload. |

The POST request should return:
| Field | Type | Description |
| ------ | ---- | ----------- |
| **message** | String | A string of random text. |
| **file_size** | Integer | The size of the file, in bytes. |
| **img** | String | An image of a car with scratches, in Base64. |

e.g.

```JSON
{
  "message": "You have made a POST request!",
  "file_size": 12234,
  "img": "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEBLAEsAAD/4QCJRXhpZgAASUkqAAgAAA ... "
}
```
