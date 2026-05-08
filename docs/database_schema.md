# MongoDB Schema for MSound

## Collections

### 1. Users
```json
{
  "_id": "objectId",
  "username": "string",
  "email": "string",
  "profile_picture": "string",
  "created_at": "timestamp",
  "playlists": ["objectId"] 
}
```

### 2. Songs
```json
{
  "_id": "objectId",
  "title": "string",
  "artist": "string",
  "album": "string",
  "duration_ms": "int",
  "audio_url": "string", 
  "cover_url": "string",
  "genre": "string",
  "release_date": "timestamp"
}
```

### 3. Playlists
```json
{
  "_id": "objectId",
  "name": "string",
  "description": "string",
  "creator_id": "objectId",
  "is_public": "boolean",
  "songs": ["objectId"],
  "cover_url": "string"
}
```
