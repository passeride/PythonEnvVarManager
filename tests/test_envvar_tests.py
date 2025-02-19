
from env_manager import ENV

def test_envvar_test():
    # If DATABASE_URL is not set, it will be added (as a commented-out default) to .env.
    db_url = ENV.getenv("DATABASE_URL", "sqlite:///:memory:")
    # If SECRET_KEY is not set, the default will be used and an entry will be added if needed.
    secret_key = ENV.getenv("SECRET_KEY", "default-secret")

    # Optionally, set another environment variable programmatically.
    ENV.setenv("NEW_VAR", "some_value")

    # Display all tracked environment variables.
    ENV.display_env_vars()
