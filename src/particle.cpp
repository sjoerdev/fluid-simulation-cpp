#include "Particle.h"

Particle::Particle(float x, float y)
{
    position = glm::vec2(x, y);
    velocity = glm::vec2(0.f, 0.f);
    force = glm::vec2(0.f, 0.f);
    density = 0;
    pressure = 0.f;
}