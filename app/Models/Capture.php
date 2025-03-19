<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Capture extends Model
{
    use HasFactory;

    protected $fillable = ['etape_id', 'path', 'description'];

    public function etape()
    {
        return $this->belongsTo(Etape::class);
    }
}

