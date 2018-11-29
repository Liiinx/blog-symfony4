<?php
/**
 * Created by PhpStorm.
 * User: felix
 * Date: 29/11/18
 * Time: 15:43
 */

namespace App\Service;


class Slugify
{

    public function generate(string $input) : string
    {

        for ($i = 0; $i < strlen($input); $i++)
        {
            if ($input[$i] == " ")
            {
                $input[$i] = "-";
            }
        }
        return $input;
    }

}