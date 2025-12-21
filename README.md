<body>

<h1>🚀 Fintech & Crypto Tracker App </h1>

<p>
A modern, production-ready <strong>Fintech & Crypto</strong> application built with <strong>Flutter</strong>.
The app delivers <strong>real-time cryptocurrency market data</strong>, <strong>smart portfolio tracking</strong>,
<strong>secure crypto purchases via Stripe</strong>, and a <strong>fast offline-first experience</strong>.
</p>

<p>
<strong>Repository:</strong><br />
<a href="https://github.com/Bahnooos/fintech-app" target="_blank">
https://github.com/Bahnooos/fintech-app
</a>
</p>

<h2>✨ Highlights</h2>
<ul>
  <li>📈 Real-time cryptocurrency market insights</li>
  <li>💼 Portfolio tracking with analytics &amp; P&amp;L</li>
  <li>💳 Buy crypto securely using Stripe payments</li>
  <li>🔐 Biometric authentication (Face ID / Fingerprint)</li>
  <li>⚡ Offline-first caching for better performance</li>
  <li>🧩 Clean, scalable architecture using BLoC / Cubit</li>
</ul>

<h2>🔥 Core Features</h2>
<ul>
  <li>🚀 Smooth onboarding experience</li>
  <li>🔒 Secure authentication
    <ul>
      <li>Email &amp; Password</li>
      <li>Biometric login (Face ID / Fingerprint)</li>
    </ul>
  </li>
  <li>🏠 Home dashboard
    <ul>
      <li>Market overview</li>
      <li>Trending cryptocurrencies</li>
    </ul>
  </li>
  <li>📊 Crypto market
    <ul>
      <li>Search &amp; filter</li>
      <li>Infinite scrolling</li>
    </ul>
  </li>
  <li>💰 Portfolio management
    <ul>
      <li>Total balance</li>
      <li>Profit &amp; Loss tracking</li>
      <li>Asset allocation charts</li>
    </ul>
  </li>
  <li>💳 Fiat-to-crypto purchases with Stripe integration</li>
  <li>⚙️ User profile &amp; settings
    <ul>
      <li>Light / Dark mode</li>
      <li>Account management</li>
    </ul>
  </li>
</ul>

<h2>🛠 Tech Stack</h2>
<ul>
  <li><strong>Framework:</strong> Flutter (Dart)</li>
  <li><strong>State Management:</strong> BLoC / Cubit</li>
  <li><strong>Networking:</strong> Dio, Retrofit</li>
  <li><strong>Backend:</strong> Firebase (Auth, Firestore)</li>
  <li><strong>Payments:</strong> Stripe</li>
  <li><strong>Local Storage:</strong> Hive, Shared Preferences</li>
  <li><strong>Code Generation:</strong> Freezed, json_serializable</li>
</ul>

<h2>🔌 APIs Used</h2>
<p>
<strong>CoinGecko API</strong><br />
Provides real-time and historical cryptocurrency market data including prices,
market caps, and trends.
</p>
<p>
📘 Documentation:
<a href="https://docs.coingecko.com/" target="_blank">
https://docs.coingecko.com/
</a>
</p>

<h2>🎨 UI / UX Design</h2>
<p>
<strong>Figma Design File</strong><br />
Complete UI/UX design for the application including screens, components, and flows.
</p>
<p>
🎨 Figma Link:
<a href="https://www.figma.com/design/M5xORL4r0I4FqQ8fbHWuMd/Fintech-App?node-id=41-2155&p=f" target="_blank">
View Design
</a>
</p>
<h2>🎬 App Demo Video</h2>

<p>
Watch the full app demo video showcasing onboarding, authentication,
market tracking, portfolio management, and Stripe integration.
</p>

<p>
🎥 <a href="assets/videos/app_demo.mp4" target="_blank">
Click here to watch the demo video
</a>
</p>


<h2>📁 Project Structure</h2>

<p>
The codebase is organized into two main directories under <code>lib/</code>,
following a <strong>feature-first architecture</strong>.
</p>

<pre>
lib/
├── core/
│   ├── cache/
│   ├── config/
│   ├── di/
│   ├── networking/
│   ├── routing/
│   ├── theme/
│   └── widgets/
└── features/
    ├── auth/
    ├── home/
    ├── portfolio/
    └── ... (other features)
</pre>

<p>
Each feature contains:
<strong>data</strong>, <strong>logic</strong> (Cubit/BLoC),
and <strong>presentation</strong> layers.
</p>

<h2>🚀 Getting Started</h2>

<h3>Prerequisites</h3>
<ul>
  <li>Flutter SDK (stable)</li>
  <li>Android Studio or VS Code with Flutter plugins</li>
  <li>Firebase project (Auth / Firestore)</li>
  <li>Stripe account</li>
</ul>

<h3>Local Setup</h3>

<pre>
git clone https://github.com/Bahnooos/fintech-app.git
cd fintech-app
</pre>

<pre>
flutter pub get
</pre>

<pre>
flutter pub run build_runner build --delete-conflicting-outputs
</pre>

<pre>
flutter run
</pre>

<h2>🤝 Contributing</h2>
<p>Contributions are welcome ❤️</p>
<ol>
  <li>Fork the repository</li>
  <li>Create a feature branch</li>
  <li>Make changes and run tests</li>
  <li>Open a Pull Request</li>
</ol>

<h2>👥 Contributors</h2>
<ul>
  <li>
    <strong>Bahnooos</strong> — Repository Owner / Maintainer<br />
    <a href="https://github.com/Bahnooos" target="_blank">https://github.com/Bahnooos</a>
  </li>
  <li>
    <strong>Mohamed Osama Mohamed</strong><br />
    <a href="https://github.com/wohamedosama" target="_blank">https://github.com/wohamedosama</a>
  </li>
  <li>
    <strong>Habiba Amr</strong><br />
    <a href="https://github.com/habibaamr26" target="_blank">https://github.com/habibaamr26</a>
  </li>
  <li>
    <strong>Muhammed Elrashidy</strong><br />
    <a href="https://github.com/MuhammedElrashidy" target="_blank">https://github.com/MuhammedElrashidy</a>
  </li>
</ul>

<p>⭐ If you like this project, don’t forget to star the repository!</p>

</body>
</html>
