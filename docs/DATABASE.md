# VetVision AI - Database Design

## Users Collection

Fields:
- userId
- fullName
- email
- phoneNumber
- role (Farmer / Pet Owner / Veterinarian / Admin)
- profileImage
- createdAt

---

## Animals Collection

Fields:
- animalId
- ownerId
- animalName
- species
- breed
- gender
- age
- weight
- color
- identificationTag
- profileImage
- createdAt

---

## Disease Predictions Collection

Fields:
- predictionId
- animalId
- imageUrl
- predictedDisease
- confidenceScore
- symptoms
- treatment
- medicines
- createdAt

---

## Vaccinations Collection

Fields:
- vaccinationId
- animalId
- vaccineName
- dueDate
- completed
- reminderSent

---

## Medical History Collection

Fields:
- historyId
- animalId
- diagnosis
- treatment
- veterinarian
- notes
- visitDate

---

## Notifications Collection

Fields:
- notificationId
- userId
- title
- message
- type
- isRead
- createdAt