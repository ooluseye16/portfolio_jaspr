// ===== ARTISTIC PORTFOLIO - INTERACTIVE ELEMENTS =====

// Custom Cursor
class CustomCursor {
  constructor() {
    this.cursor = null;
    this.trails = [];
    this.maxTrails = 10;
    this.init();
  }

  init() {
    // Create cursor element
    this.cursor = document.createElement('div');
    this.cursor.className = 'custom-cursor';
    document.body.appendChild(this.cursor);

    // Track mouse movement
    document.addEventListener('mousemove', (e) => {
      this.moveCursor(e.clientX, e.clientY);
      this.createTrail(e.clientX, e.clientY);
    });

    // Add hover effect on interactive elements
    const interactiveElements = document.querySelectorAll('a, button, .btn, .project-card, .blog-card, .stat-item');
    interactiveElements.forEach(el => {
      el.addEventListener('mouseenter', () => this.cursor.classList.add('hover'));
      el.addEventListener('mouseleave', () => this.cursor.classList.remove('hover'));
    });
  }

  moveCursor(x, y) {
    this.cursor.style.left = `${x}px`;
    this.cursor.style.top = `${y}px`;
  }

  createTrail(x, y) {
    const trail = document.createElement('div');
    trail.className = 'cursor-trail';
    trail.style.left = `${x}px`;
    trail.style.top = `${y}px`;
    document.body.appendChild(trail);

    this.trails.push(trail);

    // Fade out and remove
    setTimeout(() => {
      trail.style.opacity = '0';
      trail.style.transform = 'scale(0)';
    }, 100);

    setTimeout(() => {
      trail.remove();
      this.trails.shift();
    }, 500);

    // Limit number of trails
    if (this.trails.length > this.maxTrails) {
      const oldTrail = this.trails.shift();
      oldTrail.remove();
    }
  }
}

// Floating Geometric Shapes
class FloatingShapes {
  constructor(container, count = 10) {
    this.container = container;
    this.count = count;
    this.shapes = [];
    this.init();
  }

  init() {
    for (let i = 0; i < this.count; i++) {
      this.createShape();
    }
  }

  createShape() {
    const shape = document.createElement('div');
    shape.className = 'shape shape-floating';
    
    // Random shape type
    const types = ['circle', 'square', 'triangle'];
    const type = types[Math.floor(Math.random() * types.length)];
    shape.classList.add(`shape-${type}`);

    // Random size
    const size = Math.random() * 100 + 50;
    shape.style.width = `${size}px`;
    shape.style.height = `${size}px`;

    // Random position
    shape.style.left = `${Math.random() * 100}%`;
    shape.style.top = `${Math.random() * 100}%`;

    // Random color
    const colors = ['#FF6B6B', '#4ECDC4', '#FFE66D', '#A8E6CF', '#C7CEEA'];
    shape.style.backgroundColor = colors[Math.floor(Math.random() * colors.length)];

    // Random opacity
    shape.style.opacity = Math.random() * 0.3 + 0.1;

    // Random animation duration
    shape.style.animationDuration = `${Math.random() * 10 + 5}s`;
    shape.style.animationDelay = `${Math.random() * 5}s`;

    this.container.appendChild(shape);
    this.shapes.push(shape);
  }
}

// Scroll Animations
class ScrollAnimations {
  constructor() {
    this.elements = [];
    this.init();
  }

  init() {
    // Get all elements with animation classes
    this.elements = document.querySelectorAll('.animate-slide-up, .animate-fade-in, .animate-scale');
    
    // Create observer
    const observer = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          entry.target.style.opacity = '1';
        }
      });
    }, {
      threshold: 0.1
    });

    // Observe all elements
    this.elements.forEach(el => {
      observer.observe(el);
    });
  }
}

// Interactive Text - Split letters on hover
class InteractiveText {
  constructor(selector) {
    this.elements = document.querySelectorAll(selector);
    this.init();
  }

  init() {
    this.elements.forEach(el => {
      const text = el.textContent;
      el.innerHTML = '';
      
      text.split('').forEach((char, index) => {
        const span = document.createElement('span');
        span.textContent = char === ' ' ? '\u00A0' : char;
        span.style.display = 'inline-block';
        span.style.transition = 'transform 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55)';
        span.style.transitionDelay = `${index * 0.02}s`;
        el.appendChild(span);
      });

      el.addEventListener('mouseenter', () => {
        el.querySelectorAll('span').forEach((span, index) => {
          setTimeout(() => {
            span.style.transform = 'translateY(-10px) rotate(' + (Math.random() * 10 - 5) + 'deg)';
          }, index * 20);
        });
      });

      el.addEventListener('mouseleave', () => {
        el.querySelectorAll('span').forEach(span => {
          span.style.transform = 'translateY(0) rotate(0)';
        });
      });
    });
  }
}

// Particle Burst on Click
class ParticleBurst {
  constructor() {
    this.init();
  }

  init() {
    document.addEventListener('click', (e) => {
      this.createBurst(e.clientX, e.clientY);
    });
  }

  createBurst(x, y) {
    const particleCount = 12;
    const colors = ['#FF6B6B', '#4ECDC4', '#FFE66D', '#A8E6CF', '#C7CEEA'];

    for (let i = 0; i < particleCount; i++) {
      const particle = document.createElement('div');
      particle.style.position = 'fixed';
      particle.style.left = `${x}px`;
      particle.style.top = `${y}px`;
      particle.style.width = '8px';
      particle.style.height = '8px';
      particle.style.backgroundColor = colors[Math.floor(Math.random() * colors.length)];
      particle.style.borderRadius = Math.random() > 0.5 ? '50%' : '0';
      particle.style.pointerEvents = 'none';
      particle.style.zIndex = '9999';
      
      document.body.appendChild(particle);

      const angle = (Math.PI * 2 * i) / particleCount;
      const velocity = Math.random() * 100 + 50;
      const vx = Math.cos(angle) * velocity;
      const vy = Math.sin(angle) * velocity;

      let posX = x;
      let posY = y;
      let opacity = 1;

      const animate = () => {
        posX += vx * 0.02;
        posY += vy * 0.02;
        opacity -= 0.02;

        particle.style.left = `${posX}px`;
        particle.style.top = `${posY}px`;
        particle.style.opacity = opacity;

        if (opacity > 0) {
          requestAnimationFrame(animate);
        } else {
          particle.remove();
        }
      };

      animate();
    }
  }
}

// Initialize everything - works with both regular load and SPA
function initializeInteractions() {
  console.log('🎨 Initializing artistic interactions...');
  
  // Only initialize custom cursor on desktop
  if (window.innerWidth > 768) {
    new CustomCursor();
  }

  // Initialize scroll animations
  new ScrollAnimations();

  // Add interactive text to hero name
  new InteractiveText('.hero-name');

  // Add particle burst
  new ParticleBurst();

  // Add floating shapes to hero section
  const heroShapes = document.querySelector('.hero-shapes');
  if (heroShapes) {
    new FloatingShapes(heroShapes, 15);
  }

  // Smooth scroll for navigation links
  document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
      e.preventDefault();
      const target = document.querySelector(this.getAttribute('href'));
      if (target) {
        target.scrollIntoView({
          behavior: 'smooth',
          block: 'start'
        });
        
        // Close mobile menu if open
        const navLinks = document.querySelector('.navbar-links');
        const hamburger = document.querySelector('.hamburger');
        if (navLinks && hamburger) {
          navLinks.classList.remove('mobile-open');
          hamburger.classList.remove('active');
        }
      }
    });
  });
  
  // Hamburger menu toggle
  const hamburger = document.querySelector('.hamburger');
  const navLinks = document.querySelector('.navbar-links');
  
  if (hamburger && navLinks) {
    // Create hamburger spans
    for (let i = 0; i < 3; i++) {
      const span = document.createElement('span');
      hamburger.appendChild(span);
    }
    
    // Toggle menu
    hamburger.addEventListener('click', () => {
      hamburger.classList.toggle('active');
      navLinks.classList.toggle('mobile-open');
    });
    
    // Close menu when clicking outside
    document.addEventListener('click', (e) => {
      if (!hamburger.contains(e.target) && !navLinks.contains(e.target)) {
        hamburger.classList.remove('active');
        navLinks.classList.remove('mobile-open');
      }
    });
  }
  
  console.log('✅ Artistic interactions initialized!');
}

// Initialize immediately if DOM is ready, otherwise wait
if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', initializeInteractions);
} else {
  // DOM is already ready (SPA case)
  initializeInteractions();
}

// Fetch GitHub repositories
async function fetchGitHubRepos(username, count = 6) {
  const container = document.getElementById('github-repos');
  
  try {
    const response = await fetch(`https://api.github.com/users/${username}/repos?sort=updated&per_page=${count}`);
    
    if (!response.ok) {
      throw new Error(`GitHub API returned ${response.status}`);
    }
    
    const repos = await response.json();
    
    if (repos.length === 0) {
      container.innerHTML = `
        <div class="github-loading">
          <p>No public repositories found.</p>
        </div>
      `;
      return;
    }
    
    // Clear loading state
    container.innerHTML = '';
    
    // Create repo cards
    repos.forEach((repo, index) => {
      const card = document.createElement('a');
      card.href = repo.html_url;
      card.target = '_blank';
      card.className = 'repo-card';
      card.style.animationDelay = `${index * 0.1}s`;
      card.classList.add('animate-scale');
      
      card.innerHTML = `
        <div class="repo-header">
          <h3 class="repo-name">${repo.name}</h3>
          ${repo.stargazers_count > 0 ? `
            <div class="repo-stars">
              ⭐ ${repo.stargazers_count}
            </div>
          ` : ''}
        </div>
        <p class="repo-description">
          ${repo.description || 'No description available'}
        </p>
        <div class="repo-footer">
          ${repo.language ? `
            <div class="repo-language">
              <span class="language-dot"></span>
              ${repo.language}
            </div>
          ` : '<div></div>'}
          <span class="repo-link">View →</span>
        </div>
      `;
      
      container.appendChild(card);
    });
    
  } catch (error) {
    console.error('Error fetching GitHub repos:', error);
    container.innerHTML = `
      <div class="github-loading">
        <p>Unable to load repositories. Please check your GitHub username.</p>
      </div>
    `;
  }
}


// Add parallax effect to shapes
window.addEventListener('mousemove', (e) => {
  const shapes = document.querySelectorAll('.shape-floating');
  const mouseX = e.clientX / window.innerWidth;
  const mouseY = e.clientY / window.innerHeight;

  shapes.forEach((shape, index) => {
    const speed = (index + 1) * 0.5;
    const x = (mouseX - 0.5) * speed * 50;
    const y = (mouseY - 0.5) * speed * 50;
    
    shape.style.transform = `translate(${x}px, ${y}px)`;
  });
});
