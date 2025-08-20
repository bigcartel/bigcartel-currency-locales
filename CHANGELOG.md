# CHANGELOG: bigcartel-currency-locale 

## 2.4.0 (2025-08-20)

This release contains extensive additions and updates to the locales, primarily aligning with the [rails-i18n](https://github.com/svenfuchs/rails-i18n) gem. In some small number of cases we changed the currency symbol, the ordering of number and units, or the spacing to align more closely with Unicode standards.

### New
- Added many new currency locales pulled from the rails-i18n gem

### Changed
- Reordered existing currency locale files to make it easier to diff with rails-i18n
- Updated Danish Kroner to use the correct symbol
