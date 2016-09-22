# create
curl --include --request POST http://localhost:3000/ingredients \
  --header "Content-Type: application/json" \
  --data '{
    "ingredient": {
      "name": "slime",
      "std_measure": "cups",
      "color": "green",
      "toxicity": "case-by-case"
    }
  }'

# show
curl --include --request GET http://localhost:3000/ingredients

#update
curl --include --request PATCH http://localhost:3000/ingredients/2 \
    --header "Content-Type: application/json" \
    --data '{
      "ingredient": {
        "name": "cynide",
        "std_measure": "pills",
        "color": "red",
        "toxicity": "yes"
      }
    }'

  curl --include --request DELETE http://localhost:3000/ingredients/2 \
    --header "Content-Type: application/json"
