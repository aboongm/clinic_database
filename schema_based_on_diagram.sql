/* Create patients table */
CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    date_of_birth DATE
);

/* Create medical histories table */
CREATE TABLE medical_histories (
	id	SERIAL PRIMARY KEY,
	admitted_at	TIMESTAMP,
	patient_id INT NOT NULL,
	status VARCHAR,
	FOREIGN KEY (patient_id) REFERENCES patients (id)
);