<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            // App\Models\Post::factory()->times(200)->create(['user_id' => 2]);
            'body' => $this->faker->sentence(20),
        ];
    }
}
