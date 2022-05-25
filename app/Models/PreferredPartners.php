<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PreferredPartners extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'preferred_income_from',
        'preferred_income_to',
        'preferred_manglik'
    ];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function preferredOccupation()
    {
        return $this->hasMany(PreferredOccupation::class, 'partner_id', 'id');
    }


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function preferredFamilyType()
    {
        return $this->hasMany(PreferredFamilyTypes::class, 'partner_id', 'id');
    }
}
