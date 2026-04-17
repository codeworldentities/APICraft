-- Auto-generated: procedures — procedures v5206
-- Created for project optimization

CREATE TABLE IF NOT EXISTS procedures_—_procedures_5206 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    status VARCHAR(50) DEFAULT 'active',
    score DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_5206_name
    ON procedures_—_procedures_5206(name);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_5206_created
    ON procedures_—_procedures_5206(created_at DESC);

-- Seed data
INSERT INTO procedures_—_procedures_5206 (name, description)
VALUES
    ('item_0', 'val_0_5206'),
    ('item_1', 'val_1_5206'),
    ('item_2', 'val_2_5206'),
    ('item_3', 'val_3_5206'),
    ('item_4', 'val_4_5206'),
    ('item_5', 'val_5_5206');

-- View
CREATE OR REPLACE VIEW v_procedures_—_procedures_5206_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM procedures_—_procedures_5206
GROUP BY name
ORDER BY total DESC;
