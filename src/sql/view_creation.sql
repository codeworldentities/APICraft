-- Auto-generated: view creation v9081
-- Created for project optimization

CREATE TABLE IF NOT EXISTS view_creation_9081 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    score DECIMAL(10,2),
    counter INTEGER DEFAULT 0,
    metadata JSONB,
    email VARCHAR(255),
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_view_creation_9081_name
    ON view_creation_9081(name);

CREATE INDEX IF NOT EXISTS idx_view_creation_9081_created
    ON view_creation_9081(created_at DESC);

-- Seed data
INSERT INTO view_creation_9081 (name, score)
VALUES
    ('item_0', 'val_0_9081'),
    ('item_1', 'val_1_9081'),
    ('item_2', 'val_2_9081');

-- View
CREATE OR REPLACE VIEW v_view_creation_9081_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM view_creation_9081
GROUP BY name
ORDER BY total DESC;
