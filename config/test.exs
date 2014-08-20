use Mix.Config

config :phoenix, PhoenixJobsThree.Router,
  port: System.get_env("PORT") || 4001,
  ssl: false,
  code_reload: false,
  cookies: true,
  consider_all_requests_local: true,
  session_key: "_phoenix_jobs_three_key",
  session_secret: "HS_K4!R(PGXW0REG6+O^1EW=8CZEYZSJP0WXK8PFP!1)K+)+*U#0UR)1@1BWS&L(&3GOI+=%!M6I9)"

config :phoenix, :code_reloader,
  enabled: true

config :logger, :console,
  level: :debug


