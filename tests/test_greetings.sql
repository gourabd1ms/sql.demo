DO $$
DECLARE
    result TEXT;
BEGIN
    SELECT message INTO result FROM greetings LIMIT 1;
    IF result <> 'Hello from SQL demo!' THEN
        RAISE EXCEPTION 'Test failed: unexpected greeting %', result;
    END IF;
    RAISE NOTICE 'Test passed: greeting matches expected value';
END $$;
