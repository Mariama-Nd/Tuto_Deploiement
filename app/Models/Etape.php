<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Etape extends Model
{
    use HasFactory;

    protected $fillable = ['titre', 'description', 'ordre'];

    public function captures()
    {
        return $this->hasMany(Capture::class);
    }
}
