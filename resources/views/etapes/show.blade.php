<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>{{ $etape->titre }} - Application de Tutoriel</title>
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
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  margin: 0;
}

    a {
      text-decoration: none;
      color: inherit;
    }

    ul {
      list-style: none;
    }

    .container-fluid {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  width: 100%;
  max-width: 1200px;
  padding: 1rem;
  background: #FFFFFF;
  border-radius: 10px;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
}

    .sidebar {
      background-color: #ECF8F6;
      min-height: 100vh;
      padding: 1rem;
      border-right: 1px solid #C6EAE5;
    }

    .sidebar h5 {
      font-size: 1.2rem;
      color: #226D68;
      font-weight: bold;
      margin-bottom: 1rem;
    }

    .sidebar .nav-item {
      margin-bottom: 0.5rem;
    }

    .sidebar .nav-link {
      display: block;
      padding: 0.8rem 1rem;
      border-radius: 5px;
      transition: background-color 0.3s, color 0.3s;
    }

    .sidebar .nav-link.text-dark:hover {
      background-color: #C6EAE5;
      color: #226D68;
    }

    .sidebar .nav-link.active {
      background-color: #226D68;
      color: #ECF8F6;
    }

    main {
      flex: 1;
      padding: 2rem;
    }

    main h1 {
      font-size: 2.5rem;
      color: #226D68;
      font-weight: bold;
      margin-bottom: 2rem;
    }

    main p {
      font-size: 1.2rem;
      color: #4A7976;
      margin-bottom: 2rem;
    }

    /* Timeline horizontal */
    .timeline {
      display: flex;
      justify-content: center;
      align-items: center;
      margin: 2rem 0;
      position: relative;
    }

    .timeline::before {
      content: '';
      position: absolute;
      top: 50%;
      left: 0;
      right: 0;
      height: 4px;
      background-color: #C6EAE5;
      z-index: 1;
    }

    .timeline-step {
      position: relative;
      z-index: 2;
      text-align: center;
      margin: 0 1rem;
    }

    .timeline-step .node {
      width: 20px;
      height: 20px;
      border-radius: 50%;
      background-color: #C6EAE5;
      margin: 0 auto;
      position: relative;
    }

    .timeline-step.active .node {
      background-color: #226D68;
    }

    .timeline-step .node::after {
      content: "";
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      width: 12px;
      height: 12px;
      border-radius: 50%;
      background-color: #ECF8F6;
    }

    .timeline-step span {
      display: block;
      margin-top: 0.5rem;
      font-weight: bold;
      color: #226D68;
    }

    .timeline .progress-bar {
      position: absolute;
      top: 50%;
      left: 0;
      height: 4px;
      background-color: #226D68;
      z-index: 1;
      transition: width 0.3s ease-in-out;
    }

    /* Captures */
    .capture {
      max-width: 800px;
      margin: 2rem auto;
      border: 1px solid #C6EAE5;
      border-radius: 10px;
      background: #FFFFFF;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 1rem;
    }

    .capture-description {
      font-size: 1.5rem;
      font-weight: bold;
      text-align: center;
      margin-bottom: 1rem;
      color: #226D68;
    }

    .capture-image img {
      max-width: 100%;
      height: auto;
      border-radius: 6px;
    }

    /* Buttons */
    .btn {
      display: inline-block;
      padding: 0.8rem 2rem;
      font-size: 1rem;
      border: none;
      border-radius: 5px;
      text-align: center;
      cursor: pointer;
      transition: background-color 0.3s, transform 0.3s;
    }

    .btn-primary {
      background-color: #226D68;
      color: #ECF8F6;
    }

    .btn-primary:hover {
      background-color: #184E4B;
    }

    .btn-secondary {
      background-color: #C6EAE5;
      color: #226D68;
    }

    .btn-secondary:hover {
      background-color: #A3D6D1;
    }

    .btn-lg {
      font-size: 1.2rem;
    }

    .justify-content-between {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .text-success {
      color: #28A745;
    }
  </style>
</head>
<body>
  <div class="container-fluid">
    <div class="row">
      <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
        <div class="container py-5">

          <!-- Timeline -->
          <div class="timeline">
            @foreach($allEtapes as $index => $etapeItem)
              <div class="timeline-step {{ $etapeItem->id === $etape->id ? 'active' : '' }}">
                <div class="node"></div>
                <span>Étape {{ $index + 1 }}</span>
              </div>
            @endforeach
            <div
              class="progress-bar"
              style="width: {{ ($etape->id / count($allEtapes)) * 100 }}%;"></div>
          </div>

         <!-- Titre de l'Étape --> <!-- Description -->
         <h2 class="mb-5">{{ $etape->titre }} : {{ $etape->description }}</h1>

          <!-- Captures d'écran -->
          @if($captures->isEmpty())
            <p class="alert alert-warning">Aucune capture d'écran associée à cette étape.</p>
          @else
            @foreach($captures as $capture)
              <div class="capture">
                <div class="capture-description">
                  {{ $capture->description }}
                </div>
                <div class="capture-image">
                  <img src="{{ asset('storage/' . $capture->path) }}" alt="Capture">
                </div>
              </div>
            @endforeach
          @endif

          <!-- Navigation -->
          <div class="mt-5 justify-content-between">
            @if($etapeSuivante)
              <a href="{{ route('etapes.show', $etapeSuivante->id) }}" class="btn btn-primary btn-lg px-4">
                Étape Suivante
              </a>
            @else
              <p class="text-success fs-5 fw-bold">Félicitations ! Vous avez complété toutes les étapes.</p>
            @endif
            <a href="{{ route('etapes.index') }}" class="btn btn-secondary btn-lg px-4">Retour à l'accueil</a>
          </div>
        </div>
      </main>
    </div>
  </div>
</body>
</html>
