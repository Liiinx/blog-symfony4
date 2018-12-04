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

        $ChangeChar = array(
            '/[áàâãªä]/u' => 'a',
            '/[ÁÀÂÃÄ]/u' => 'A',
            '/[ÍÌÎÏ]/u' => 'I',
            '/[íìîï]/u' => 'i',
            '/[éèêë]/u' => 'e',
            '/[ÉÈÊË]/u' => 'E',
            '/[óòôõºö]/u' => 'o',
            '/[ÓÒÔÕÖ]/u' => 'O',
            '/[úùûü]/u' => 'u',
            '/[ÚÙÛÜ]/u' => 'U',
            '/ç/' => 'c',
            '/Ç/' => 'C',
            '/ñ/' => 'n',
            '/Ñ/' => 'N',
            '/ +/' => '-',
            '/-+/' => '-',
            '/[\'!?;,.:"_]/' => '',
        );
        $input = preg_replace(array_keys($ChangeChar), array_values($ChangeChar), $input);
        $input = strtolower(trim($input));
        //dd($input);
        return $input;
    }

}