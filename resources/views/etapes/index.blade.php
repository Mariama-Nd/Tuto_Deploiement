<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Application de Tutoriel - Étapes de Déploiement</title>
  <style>
    /* Base styles */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Arial', sans-serif;
    }

    body {
      background-color: #ECF8F6;
      color: #226D68;
      line-height: 1.6;
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    ul {
      list-style: none;
    }

    /* Header styles */
    header {
      background-color: #226D68;
      color: #ECF8F6;
      padding: 1rem 2rem;
      display: flex;
      justify-content: space-between;
      align-items: center;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    header .logo {
      font-size: 1.5rem;
      font-weight: bold;
    }

    nav ul {
      display: flex;
      gap: 1.5rem;
    }

    nav ul li {
      transition: color 0.3s;
    }

    nav ul li:hover {
      color: #ECF8F6;
      text-decoration: underline;
    }

    /* Hero section */
    .hero {
      text-align: center;
      padding: 3rem 1rem;
      background: linear-gradient(135deg, #226D68 50%, #ECF8F6 50%);
      color: #ECF8F6;
    }

    .hero h3 {
      font-size: 2rem;
      margin-bottom: 1rem;
      margin-right: 600px;
    }

    .hero p {
      font-size: 1.2rem;
      margin-bottom: 2rem;
      margin-right: 608px;
    }

    .hero button {
      padding: 0.8rem 2rem;
      font-size: 1rem;
      background-color: #ECF8F6;
      color: #226D68;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s;
      margin-right: 650px;
    }

    .hero button:hover {
      background-color: #C6EAE5;
    }

    /* Steps section */
    .steps {
      max-width: 1200px;
      margin: 2rem auto;
      padding: 1rem;
    }

    .steps h2 {
      text-align: center;
      font-size: 2rem;
      margin-bottom: 2rem;
    }

    .step {
      display: flex;
      align-items: center;
      background-color: #ECF8F6;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
      border-radius: 10px;
      padding: 1.5rem;
      margin-bottom: 1.5rem;
      transition: transform 0.3s, box-shadow 0.3s;
    }

    .step:hover {
      transform: translateY(-5px);
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    }

    .step-icon {
      background-color: #226D68;
      color: #ECF8F6;
      font-size: 1.5rem;
      padding: 1rem;
      border-radius: 50%;
      margin-right: 1.5rem;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .step-content h3 {
      margin-bottom: 0.5rem;
      font-size: 1.5rem;
    }

    .step-content p {
      font-size: 1rem;
      color: #4A7976;
    }

    /* Footer */
    footer {
      background-color: #226D68;
      color: #ECF8F6;
      text-align: center;
      padding: 1rem;
      margin-top: 2rem;
      font-size: 0.9rem;
    }

    footer a {
      color: #C6EAE5;
      text-decoration: underline;
    }

    /* Bouton stylisé */
.btn {
  padding: 0.8rem 2rem;
  font-size: 1rem;
  background-color: #ECF8F6;
  color: #226D68;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s;
  margin-right: 650px;
  display: inline-block;
  text-align: center;
}

.btn:hover {
  background-color: #C6EAE5;
}

  </style>
</head>
<body>

  <!-- Header -->
  <header>
    <div class="logo">Tutoriels Déploiement</div>
    <nav>
      <ul>
        <li>By Omzo et Yam's</li>
      </ul>
    </nav>
  </header>

  <!-- Hero Section -->
  <section class="hero" id="hero">
    <h3>Bienvenue dans votre guide de déploiement</h3>
    <p>Explorez des tutoriels structurés et faciles pour réussir vos déploiements.</p>
    <a href="{{ route('etapes.show', $premiereEtape->id ?? 1) }}" class="btn">Commencer</a>
  </section>


  <!-- Steps Section -->
  <section class="steps" id="steps">
    <h2>Étapes Clés</h2>

    <div class="step">
      <div class="step-icon">1</div>
      <div class="step-content">
        <h3>Étape 1</h3>
        <p>Déployer une application sur alwaysdata avec FileZilla.</p>
      </div>
    </div>

    <div class="step">
      <div class="step-icon">2</div>
      <div class="step-content">
        <h3>Étape 2</h3>
        <p>Déploiement d’une application PHP avec Docker.</p>
      </div>
    </div>

    <div class="step">
      <div class="step-icon">3</div>
      <div class="step-content">
        <h3>Étape 3</h3>
        <p>Supervision et Monitoring app PHP avec Grafana et Prometheus.</p>
      </div>
    </div>

    <div class="step">
        <div class="step-icon">4</div>
        <div class="step-content">
          <h3>Étape 4</h3>
          <p>Supervision et Monitoring app Node.js avec Grafana et Prometheus</p>
        </div>
      </div>
      <div class="step">
        <div class="step-icon">5</div>
        <div class="step-content">
          <h3>Étape 5</h3>
          <p>Déploiement d’une application mobile avec Firebase.</p>
        </div>
      </div>
  </section>

  <!-- Footer -->
  <footer id="contact">
    <p>&copy; 2025 Tutoriels Déploiement. Tous droits réservés. <a href="#">Contactez-nous</a></p>
  </footer>

</body>
</html>
