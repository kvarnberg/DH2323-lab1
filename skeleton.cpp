/*
 * SDL2 skeleton for lab assignments 1–3 of the KTH course DH2323,
 * Computer Graphics and Interaction (and also SU DA3001, Datalogi II).
 *
 * See README.md for details.
 */

#include <iostream>
#include </usr/local/include/glm/glm.hpp>
#include <vector>
#include "SDL2Auxiliary.h"

using namespace std;
using glm::vec3;

// --------------------------------------------------------
// GLOBAL VARIABLES

const int SCREEN_WIDTH = 640;
const int SCREEN_HEIGHT = 480;
SDL2Aux *sdlAux;
SDL_Surface *screen;

vec3 red = vec3(1, 0, 0);
vec3 green = vec3(0, 1, 0);
vec3 blue = vec3(0, 0, 1);
vec3 yellow = vec3(1, 1, 0);

vector<vec3> stars(1000); // i think it looks nicer with 5000 tbh, more like star wars

int t;

// --------------------------------------------------------
// FUNCTION DECLARATIONS

void DrawColor();

void DrawStars();

void InterpolateFloat(float a, float b, vector<float> &result);

void Interpolate(vec3 a, vec3 b, vector<vec3> &result);

void Update();

// --------------------------------------------------------
// FUNCTION DEFINITIONS

int main(int argc, char *argv[])
{
  sdlAux = new SDL2Aux(SCREEN_WIDTH, SCREEN_HEIGHT);

  // the part commented out is for testing the functions
  /*
  vector<float> result(10);        // Create a vector with 10 floats
  InterpolateFloat(5, 14, result); // Fill it with interpolated values
  for (int i = 0; i < result.size(); ++i)
    cout << result[i] << " "; // Print the result to the terminal
  */
  /*
  vector<vec3> result(4);
  vec3 a(1, 4, 9.2);
  vec3 b(4, 1, 9.8);
  Interpolate(a, b, result);
  for (int i = 0; i < result.size(); ++i)
  {
    cout << "( "
         << result[i].x << ", "
         << result[i].y << ", "
         << result[i].z << " ) ";
  }
  */

  // loop through all stars
  for (int i = 0; i < stars.size(); i++)
  {
    // equation 2
    stars[i].x = 2 * float(rand()) / float(RAND_MAX) - 1.0f; // between -1 and 1
    stars[i].y = 2 * float(rand()) / float(RAND_MAX) - 1.0f; // between -1 and 1
    stars[i].z = float(rand()) / float(RAND_MAX);            // between 0 and 1
  }

  while (!sdlAux->quitEvent())
  {
    Update();
    DrawStars();
    // DrawColor();
  }

  sdlAux->saveBMP("screenshot.bmp");
  return 0;
}

void DrawColor()
{
  // bilinear interpolation
  sdlAux->clearPixels();

  vector<vec3> leftYDir(SCREEN_HEIGHT);
  vector<vec3> rightYDir(SCREEN_HEIGHT);

  // interpolate on left side, in y direction up and down, by sending in color vectors for red and yellow, as well
  // as an empty vector of the screens height to fill with interpolated values.
  Interpolate(red, yellow, leftYDir);
  // right side, in y direction, same as described before but with blue and green and done on the right side of the screen.
  Interpolate(blue, green, rightYDir);

  // loop through all pixels
  for (int y = 0; y < SCREEN_HEIGHT; ++y)
  {
    for (int x = 0; x < SCREEN_WIDTH; ++x)
    {
      // interpolate between the left side and the right side, send in empty vector for the middle which will be filled
      // with the interpolated values. my thought process for this is described in notes, please refer to it for a great
      // visual representation of bilinear interpolation.

      vector<vec3> middleLine(SCREEN_WIDTH);
      Interpolate(leftYDir[y], rightYDir[y], middleLine);
      sdlAux->putPixel(x, y, middleLine[x]);
    }
  }

  sdlAux->render();
}

void DrawStars()
{
  sdlAux->clearPixels();

  // focal length
  float f = SCREEN_HEIGHT / 2;

  // make screen black
  SDL_FillRect(screen, 0, 0);

  for (size_t s = 0; s < stars.size(); ++s)
  {
    // equation 3, pinhole camera, transform from (x,y,z) to (u,v)
    float u = (f * (stars[s].x / stars[s].z)) + SCREEN_WIDTH / 2.0f;
    float v = (f * (stars[s].y / stars[s].z)) + SCREEN_HEIGHT / 2.0f;

    // fade the brightness of the stars, i.e. let it depend on the distance to the camera, from instructions
    vec3 color = 0.2f * vec3(1, 1, 1) / (stars[s].z * stars[s].z);

    sdlAux->putPixel(u, v, color);
  }

  sdlAux->render();
}

void Update()
{
  int t2 = SDL_GetTicks();
  float dt = float(t2 - t);
  t = t2;
  float v = 0.001f;

  for (int s = 0; s < stars.size(); ++s)
  {
    stars[s].z = stars[s].z - (v * dt); // equation 1

    if (stars[s].z <= 0)
      stars[s].z += 1;
    if (stars[s].z > 1)
      stars[s].z -= 1;
  }
}

void InterpolateFloat(float a, float b, vector<float> &result)
{
  // when calling Interpolate, the result vector will vary based on number of pixels in x and y directions
  //(1-t)a + t*b

  // special case: take the average of a and b

  if (result.size() == 1)
  {
    result[0] = (a + b) / 2.0f;
  }
  for (int i = 0; i < result.size(); ++i)
  {
    // t ∈ [0, 1]
    float t = i / ((float)result.size() - 1.0f);
    result[i] = ((1 - t) * a) + b * t;
  }
};

void Interpolate(vec3 a, vec3 b, vector<vec3> &result)
{
  if (result.size() == 1)
  {
    result[0] = (a + b) / 2.0f;
  }

  for (int i = 0; i < result.size(); i++)
  {
    //(1-t)a + t*b, for each of the three pixel values
    // t ∈ [0, 1]
    float t = float(i) / (float(result.size()) - 1.0f);
    result[i].x = (1 - t) * a.x + t * b.x;
    result[i].y = (1 - t) * a.y + t * b.y;
    result[i].z = (1 - t) * a.z + t * b.z;
  }
};
