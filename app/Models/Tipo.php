<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Tipo extends Model
{
    use HasFactory;
    use softDeletes;

    public function Personas(){
        return $this->hasMany(Persona::class);
    }
}
