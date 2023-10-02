# API Documentation

## Introduction

Provide a brief introduction to your API.

## Authentication
Currently API is public with no Authentication Required.

## URL
- `https://localhost:8080/`
- The server is running on Port `8080`
- There are two functionality that Boredom Slayer API full-fills
  - Activity Category
  - Generating Random Activity


- ### Category
    - `https://localhost:8080/generate`

            {
            "activityModelId": 25,
            "activityName": "Learn Photography",
            "activityDescription": "Master the art of photography and capture moments.",
            "categoryModel": {
            "category_id": 3,
                "category_name": "Learn New Things"
                }
            }
        -  `https://localhost:8080/generate/{id}`

                {
                "activityModelId": 28,
                "activityName": "Explore Science",
                "activityDescription": "Study various scientific subjects and discoveries.",
                "categoryModel": {
                    "category_id": 3,
                    "category_name": "Learn New Things"
                    }
                }

- ### Activity
  - `http://localhost:8080/api/category`
  
          [
              {
                  "category_id": 1,
                  "category_name": "Indoor Activity"
              },
              {
                  "category_id": 2,
                  "category_name": "Outdoor Activity"
              },
              {
                  "category_id": 3,
                  "category_name": "Learn New Things"
              },
              {
                  "category_id": 4,
                  "category_name": "With Friends"
              }
            ]
    -  `http://localhost:8080/api/category/{id}`

            {
            "category_id": 3,
            "category_name": "Learn New Things"
            }