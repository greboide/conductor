APP_CONFIG = YAML.load_file(File.join(RAILS_ROOT, 'config', 'settings.yml'))[RAILS_ENV].symbolize_keys
