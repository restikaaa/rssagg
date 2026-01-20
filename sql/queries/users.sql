-- name: CreateUser :one
INSERT INTO users (id, name, email, created_at, updated_at, api_key) 
VALUES ($1, $2, $3, $4, $5, 
  encode(sha256(random()::text::bytea), 'hex')
)
RETURNING *;


