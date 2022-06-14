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

/* Create invoices table */
CREATE TABLE invoices (
	id SERIAL PRIMARY KEY,
	total_amount DECIMAL,
	generated_at TIMESTAMP,
	payed_at TIMESTAMP,
	medical_histories_id INT,
	FOREIGN KEY (medical_histories_id) REFERENCES medical_histories(id)
);

/* Create treatments tables */

CREATE TABLE treatments (
	id SERIAL PRIMARY KEY,
	type VARCHAR,
	name VARCHAR
);

/* Create invoice_items table */

CREATE TABLE invoice_items (
	id SERIAL PRIMARY KEY,
	unit_price DECIMAL,
	quantity INT,
	total_price DECIMAL,
	invoice_id INT,
	treatment_id INT,
	FOREIGN KEY (invoice_id) REFERENCES invoices(id),
	FOREIGN KEY (treatment_id) REFERENCES treatments(id)
);
