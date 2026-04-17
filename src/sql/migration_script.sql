-- Auto-generated: migration script v878
-- Created for project optimization

CREATE TABLE IF NOT EXISTS migration_script_878 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    status VARCHAR(50) DEFAULT 'active',
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_migration_script_878_name
    ON migration_script_878(name);

CREATE INDEX IF NOT EXISTS idx_migration_script_878_created
    ON migration_script_878(created_at DESC);

-- Seed data
INSERT INTO migration_script_878 (name, email)
VALUES
    ('item_0', 'val_0_878'),
    ('item_1', 'val_1_878'),
    ('item_2', 'val_2_878'),
    ('item_3', 'val_3_878'),
    ('item_4', 'val_4_878'),
    ('item_5', 'val_5_878'),
    ('item_6', 'val_6_878'),
    ('item_7', 'val_7_878'),

-- View
CREATE OR REPLACE VIEW v_migration_script_878_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM migration_script_878
GROUP BY name
ORDER BY total DESC;
