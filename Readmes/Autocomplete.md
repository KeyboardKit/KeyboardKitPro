#  Autocomplete

KeyboardKit Pro adds an autocomplete engine that supports all keyboard localse, as well as a web-based provider that fetches autocomplete suggestions from a remote, configurable data source. 


## `StandardAutocompleteProvider`

The `StandardAutocompleteProvider` is automatically enabled and selected when you register a Pro license.

This provider uses local, on-device functionality, doesn't require Internet access or full access and supports all keyboard locales.

It's however not contextual or predictive. It will only autocomplete or autocorrect the current word and will not predict the next. 


## `ExternalAutocompleteProvider`

The `ExternalAutocompleteProvider` is a web-based provider that fetches autocomplete suggestions from a remote, configurable data source.

This provider makes it possible to integrate with remote services, but it requires Internet access and full access.

To use this provider, create a class that inherits `ExternalAutocompleteProvider` and implements `AutocompleteProvider`, like this:

```
class CustomProvider: ExternalAutocompleteProvider<CustomProviderResult>, AutocompleteProvider {

    ...
} 
```

You can then override any parts of the `ExternalAutocompleteProvider` to customize the behavior.
 
This inheritance and implementation is currently needed, since the framework linking behaves differently in keyboard extensions, where the KeyboardKit and KeyboardKit Pro linking doesn't support inheritance or protocol conformance in KeyboardKit Pro. Future versions will hopefully fix this.
