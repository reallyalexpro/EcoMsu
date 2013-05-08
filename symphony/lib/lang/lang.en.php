<?php

  $about = array(
    'name' => 'English',
  );  
  
  
  /*
   * CORE: Symphony
   * Localisation strings
   */
 
   $dictionary = array();

  
  /*
   * CORE: Symphony
   * Transliterations
   */

  // Alphabetical
  $transliterations = array(
    '/A/' => 'A',     '/A/' => 'A',     '/A/' => 'A',     '/A/' => 'A',     '/A/' => 'Ae',     
    '/A/' => 'A',     '/A/' => 'A',     '/A/' => 'A',     '/A/' => 'A',     '/?/' => 'Ae',     
    '/C/' => 'C',     '/C/' => 'C',     '/C/' => 'C',     '/C/' => 'C',     '/C/' => 'C',     
    '/D/' => 'D',     '/D/' => 'D',     '/?/' => 'D',     '/E/' => 'E',     '/E/' => 'E',     
    '/E/' => 'E',     '/E/' => 'E',     '/E/' => 'E',     '/E/' => 'E',     '/E/' => 'E',     
    '/E/' => 'E',     '/E/' => 'E',     '/G/' => 'G',     '/G/' => 'G',     '/G/' => 'G',     
    '/G/' => 'G',     '/H/' => 'H',     '/H/' => 'H',     '/I/' => 'I',     '/I/' => 'I',     
    '/I/' => 'I',     '/I/' => 'I',     '/I/' => 'I',     '/I/' => 'I',     '/I/' => 'I',     
    '/I/' => 'I',     '/I/' => 'I',     '/?/' => 'Ij',     '/J/' => 'J',     '/K/' => 'K',     
    '/L/' => 'L',     '/L/' => 'L',     '/L/' => 'L',     '/L/' => 'L',     '/?/' => 'L',     
    '/N/' => 'N',     '/N/' => 'N',     '/N/' => 'N',     '/N/' => 'N',     '/?/' => 'N',     
    '/O/' => 'O',     '/O/' => 'O',     '/O/' => 'O',     '/O/' => 'O',     '/O/' => 'Oe',     
    '/O/' => 'O',     '/O/' => 'O',     '/O/' => 'O',     '/O/' => 'O',     '/?/' => 'Oe',     
    '/R/' => 'R',     '/R/' => 'R',     '/R/' => 'R',     '/S/' => 'S',     '/S/' => 'S',     
    '/S/' => 'S',     '/S/' => 'S',     '/?/' => 'S',     '/T/' => 'T',     '/T/' => 'T',     
    '/T/' => 'T',     '/?/' => 'T',     '/U/' => 'U',     '/U/' => 'U',     '/U/' => 'U',     
    '/U/' => 'Ue',     '/U/' => 'U',     '/U/' => 'U',     '/U/' => 'U',     '/U/' => 'U',     
    '/U/' => 'U',     '/U/' => 'U',     '/W/' => 'W',     '/Y/' => 'Y',     '/Y/' => 'Y',     
    '/Y/' => 'Y',     '/Y/' => 'Y',     '/Z/' => 'Z',     '/Z/' => 'Z',     '/Z/' => 'Z',     
    '/?/' => 'T',     
    '/a/' => 'a',     '/a/' => 'a',     '/a/' => 'a',     '/a/' => 'a',     '/a/' => 'ae',
     '/a/' => 'a',     '/a/' => 'a',     '/a/' => 'a',     '/a/' => 'a',     '/?/' => 'ae',
     '/c/' => 'c',     '/c/' => 'c',     '/c/' => 'c',     '/c/' => 'c',     '/c/' => 'c',
     '/d/' => 'd',     '/d/' => 'd',     '/?/' => 'd',     '/e/' => 'e',     '/e/' => 'e',
     '/e/' => 'e',     '/e/' => 'e',     '/e/' => 'e',     '/e/' => 'e',     '/e/' => 'e',
     '/e/' => 'e',     '/e/' => 'e',     '/g/' => 'g',     '/g/' => 'g',    '/g/' => 'g',
     '/g/' => 'g',     '/h/' => 'h',     '/h/' => 'h',     '/i/' => 'i',     '/i/' => 'i',
     '/i/' => 'i',     '/i/' => 'i',     '/i/' => 'i',     '/i/' => 'i',    '/i/' => 'i',
     '/i/' => 'i',     '/?/' => 'i',     '/?/' => 'ij',     '/j/' => 'j',     '/k/' => 'k',
     '/l/' => 'l',     '/l/' => 'l',     '/l/' => 'l',     '/l/' => 'l',    '/?/' => 'l',
      '/n/' => 'n',     '/n/' => 'n',     '/n/' => 'n',     '/n/' => 'n',     '/?/' => 'n',
     '/o/' => 'o',     '/o/' => 'o',     '/o/' => 'o',     '/o/' => 'o',     '/o/' => 'oe',
     '/o/' => 'o',     '/o/' => 'o',     '/o/' => 'o',     '/o/' => 'o',     '/?/' => 'oe',
     '/r/' => 'r',     '/r/' => 'r',     '/r/' => 'r',     '/s/' => 's',    '/s/' => 's',
    '/s/' => 's',    '/s/' => 's',    '/?/' => 's',    '/t/' => 't',    '/t/' => 't',
    '/t/' => 't',    '/?/' => 't',    '/u/' => 'u',    '/u/' => 'u',     '/u/' => 'u',
     '/u/' => 'ue',     '/u/' => 'u',     '/u/' => 'u',     '/u/' => 'u',     '/u/' => 'u',
     '/u/' => 'u',     '/u/' => 'u',     '/w/' => 'w',     '/y/' => 'y',     '/y/' => 'y',
     '/y/' => 'y',     '/y/' => 'y',     '/z/' => 'z',    '/z/' => 'z',     '/z/' => 'z',     
     '/?/' => 't',     '/?/' => 'ss',     '/?/' => 'ss',    '/?/' => 'f',    '/?/' => 'k',
    '/?/' => 'n',
  );
  
  // Symbolic
  $transliterations += array(
    '/\(/'  => null,    '/\)/'  => null,    '/,/'  => null,
    '/�/'  => '-',      '/-/'  => '-',      '/�/'  => '"',
    '/�/'  => '"',      '/�/'  => '"',      '/�/'  => '-',
    '/?/'  => null,    '/?/'  => null,    '/?/'  => null,
    '/�/' => 'c'
  );
  
  // Ampersands
  $transliterations += array(
    '/^&(?!&)$/'  => 'and',
    '/^&(?!&)/'    => 'and-',
    '/&(?!&)&/'    => '-and',
    '/&(?!&)/'    => '-and-'
  );
  