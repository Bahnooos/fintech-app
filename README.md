<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Fintech & Crypto Tracker App</title>
</head>
<body>

<h1>🚀 Fintech & Crypto Tracker App (Flutter)</h1>

<p>
  <a href="https://deepwiki.com/Bahnooos/fintech-app">
    <img src="https://devin.ai/assets/askdeepwiki.png" alt="Ask DeepWiki" />
  </a>
</p>

<p>
  A <strong>modern Fintech & Crypto application</strong> built with
  <strong>Flutter</strong>, designed to deliver a smooth, secure, and data-driven
  experience.
</p>

<p>
  Track the crypto market in real time, manage your portfolio, and buy crypto
  seamlessly — all wrapped in a clean architecture with an
  <strong>offline-first approach</strong>.
</p>

<p>
  🔗 <strong>Repository:</strong>
  <a href="https://github.com/Bahnooos/fintech-app">
    https://github.com/Bahnooos/fintech-app
  </a>
</p>

<hr />

<h2>✨ What Makes This App Stand Out?</h2>
<ul>
  <li>📊 Real-time crypto market insights</li>
  <li>💼 Smart portfolio management</li>
  <li>💳 Secure crypto purchases with Stripe</li>
  <li>🔐 Biometric authentication (Face ID & Fingerprint)</li>
  <li>⚡ Offline-first caching for blazing-fast performance</li>
  <li>🧠 Clean, scalable architecture using BLoC / Cubit</li>
</ul>

<hr />

<h2>🔥 Core Features</h2>

<h3>🟢 Onboarding</h3>
<p>A smooth and intuitive onboarding flow to help new users get started effortlessly.</p>

<h3>🔐 Authentication</h3>
<ul>
  <li>Email &amp; Password</li>
  <li>Biometric login (Face ID &amp; Fingerprint)</li>
</ul>

<h3>🏠 Home Dashboard</h3>
<ul>
  <li><strong>Market Overview:</strong> Total market cap, 24h volume, BTC dominance</li>
  <li><strong>Trending Coins:</strong> Live trending data from CoinGecko</li>
  <li><strong>Top Gainers:</strong> Best-performing cryptocurrencies</li>
</ul>

<h3>📈 Crypto Market</h3>
<ul>
  <li>Full crypto list with infinite scrolling</li>
  <li>Search &amp; filter functionality</li>
  <li>Clean and responsive UI</li>
</ul>

<h3>💼 Portfolio Management</h3>
<ul>
  <li>Total portfolio balance</li>
  <li>Weekly profit &amp; loss</li>
  <li>Asset allocation pie chart</li>
  <li>Detailed "My Holdings" view</li>
</ul>

<h3>💳 Buy Crypto</h3>
<ul>
  <li>Buy cryptocurrencies using fiat</li>
  <li>Secure payments powered by Stripe</li>
</ul>

<h3>⚙️ Profile &amp; Settings</h3>
<ul>
  <li>Manage user account details</li>
  <li>Light / Dark mode</li>
  <li>Secure logout</li>
</ul>

<hr />

<h2>🏗 Architecture &amp; Tech Stack</h2>

<h3>🧱 Tech Stack</h3>
<ul>
  <li><strong>Framework:</strong> Flutter</li>
  <li><strong>State Management:</strong> BLoC / Cubit</li>
  <li><strong>Dependency Injection:</strong> get_it</li>
  <li><strong>Networking:</strong> Dio, Retrofit, CoinGecko APIs</li>
  <li><strong>Backend:</strong> Firebase (Auth &amp; Firestore)</li>
  <li><strong>Payments:</strong> Stripe</li>
  <li><strong>Local Storage:</strong> Hive, Shared Preferences</li>
  <li><strong>Code Generation:</strong> Freezed, json_serializable</li>
  <li><strong>UI:</strong> flutter_screenutil, fl_chart, skeletonizer</li>
</ul>

<hr />

<h2>📁 Project Structure</h2>

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
    └── ... other features
</pre>

<hr />

<h2>🚀 Getting Started</h2>

<h3>✅ Prerequisites</h3>
<ul>
  <li>Flutter SDK</li>
  <li>VS Code or Android Studio</li>
  <li>Firebase project</li>
  <li>Stripe account</li>
</ul>

<h3>🛠 Installation</h3>

<h4>1️⃣ Clone the repository</h4>
<pre>
git clone https://github.com/bahnooos/fintech-app.git
cd fintech-app
</pre>

<h4>2️⃣ Environment variables</h4>
<pre>
cp .env.example .env
</pre>

<pre>
STRIPE_PUBLISHABLE_KEY=your_publishable_key
STRIPE_SECRET_KEY=your_secret_key
</pre>

<h4>3️⃣ Firebase setup</h4>
<pre>
flutterfire configure
</pre>

<h4>4️⃣ Install dependencies</h4>
<pre>
flutter pub get
</pre>

<h4>5️⃣ Run code generation</h4>
<pre>
flutter pub run build_runner build --delete-conflicting-outputs
</pre>

<h4>6️⃣ Run the app</h4>
<pre>
flutter run
</pre>

<hr />

<h2>👨‍💻 Author</h2>
<p>
  <strong>Mohamed Osama Mohamed</strong><br />
  Flutter Developer | Fintech &amp; Clean Architecture Enthusiast
</p>

</body>
</html>
