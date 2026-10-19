# mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Email confirmation during web development

Run the web app on a stable local port:

```powershell
flutter run -d chrome --web-port=3966
```

In Supabase Dashboard, open **Authentication → URL Configuration** and add
`http://localhost:3966/**` to **Redirect URLs**. Keep **Site URL** set to the
deployed app URL for production. New web sign-ups return to the origin that
served the app; Supabase Flutter handles the confirmation code on app startup.
For other local ports or deployed environments, add the app's corresponding
origin to Supabase's allowed Redirect URLs.
