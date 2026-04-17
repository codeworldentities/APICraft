-- Auto-generated: schema — database schema definition v4408
-- Created for project optimization

CREATE TABLE IF NOT EXISTS schema_—_database_schema_definition_4408 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    counter INTEGER DEFAULT 0,
    priority SMALLINT DEFAULT 0,
    email VARCHAR(255),
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_4408_name
    ON schema_—_database_schema_definition_4408(name);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_4408_created
    ON schema_—_database_schema_definition_4408(created_at DESC);

-- Seed data
INSERT INTO schema_—_database_schema_definition_4408 (name, metadata)
VALUES
    ('item_0', 'val_0_4408'),
    ('item_1', 'val_1_4408'),
    ('item_2', 'val_2_4408'),
    ('item_3', 'val_3_4408'),
    ('item_4', 'val_4_4408'),
    ('item_5', 'val_5_4408'),
    ('item_6', 'val_6_4408'),
    ('item_7', 'val_7_4408'),

-- View
CREATE OR REPLACE VIEW v_schema_—_database_schema_definition_4408_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM schema_—_database_schema_definition_4408
GROUP BY name
ORDER BY total DESC;
