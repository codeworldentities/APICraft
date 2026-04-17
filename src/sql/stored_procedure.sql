-- Auto-generated: stored procedure v5911
-- Created for project optimization

CREATE TABLE IF NOT EXISTS stored_procedure_5911 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    is_active BOOLEAN DEFAULT TRUE,
    priority SMALLINT DEFAULT 0,
    score DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_5911_name
    ON stored_procedure_5911(name);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_5911_created
    ON stored_procedure_5911(created_at DESC);

-- Seed data
INSERT INTO stored_procedure_5911 (name, status)
VALUES
    ('item_0', 'val_0_5911'),
    ('item_1', 'val_1_5911'),
    ('item_2', 'val_2_5911'),
    ('item_3', 'val_3_5911'),
    ('item_4', 'val_4_5911'),
    ('item_5', 'val_5_5911'),
    ('item_6', 'val_6_5911'),
    ('item_7', 'val_7_5911'),

-- View
CREATE OR REPLACE VIEW v_stored_procedure_5911_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM stored_procedure_5911
GROUP BY name
ORDER BY total DESC;
