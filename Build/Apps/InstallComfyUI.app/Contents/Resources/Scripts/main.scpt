FasdUAS 1.101.10   ��   ��  
  k           
  l     ��  ��    . ( Determine the path of the script itself     � 	 	 P   D e t e r m i n e   t h e   p a t h   o f   t h e   s c r i p t   i t s e l f   
 
 
 l    	 ����
  r     	 
 
 
 I    ��  
�� .earsffdralis        afdr
   f       �� ��
�� 
rtyp
  m    ��
�� 
TEXT��  
  o      ���� 0 thisfilepath thisFilePath��  ��      
  l     ��  ��    8 2 Convert to POSIX path (standard file system path)     �   d   C o n v e r t   t o   P O S I X   p a t h   ( s t a n d a r d   f i l e   s y s t e m   p a t h )    
  l  
  ����
  r   
   
  n   
   
  1   
 ��
�� 
psxp
  l  
 
 ����
  b   
 
   
  l  
  !����
 ! o   
 ���� 0 thisfilepath thisFilePath��  ��  
   m     " " � # #  : :��  ��  
  o      ����  0 thisfolderpath thisFolderPath��  ��     $ %
 $ l     ��������  ��  ��   %  & '
 & l     �� ( )��   ( ( " Prepare the shell script commands    ) � * * D   P r e p a r e   t h e   s h e l l   s c r i p t   c o m m a n d s '  + ,
 + l    -����
 - r     . /
 . b     0 1
 0 b     2 3
 2 b     4 5
 4 b     6 7
 6 m     8 8 � 9 9 
 
 c d   '
 7 o    ����  0 thisfolderpath thisFolderPath
 5 m     : : � ; ;	R ' 
 i n s t a l l _ h o m e b r e w ( )   { 
 
 
 e c h o   " = = = = = = = = = >         C h e c k   i f   H o m e b r e w   i s   i n s t a l l e d " 
 
 i f   !   c o m m a n d   - v   b r e w   & > / d e v / n u l l ;   t h e n 
           e c h o   " = = = = = = = = = >       H o m e b r e w   n o t   f o u n d .   I n s t a l l i n g   H o m e b r e w . . . " 
           e c h o   " = = = = = = = = = >       i n s t a l l   h o m e b r e w " 
 / b i n / b a s h   - c   " $ ( c u r l   - f s S L   h t t p s : / / r a w . g i t h u b u s e r c o n t e n t . c o m / H o m e b r e w / i n s t a l l / H E A D / i n s t a l l . s h ) " 
 f i 
 e c h o   " = = = = = = = = = >       H o m e b r e w   i s   i n s t a l l e d . " 
 c o n t i n u e _ s c r i p t 
 
 } 
 c o n t i n u e _ s c r i p t ( )   { 
 e c h o   " = = = = = = = = = >       i n s t a l l   P y t h o n " 
 b r e w   i n s t a l l   p y t h o n 
 e c h o   " = = = = = = = = = >       C l o n e   t h e   G i t   r e p o s i t o r y " 
 g i t   c l o n e   h t t p s : / / g i t h u b . c o m / c o m f y a n o n y m o u s / C o m f y U I 
 e c h o   " = = = = = = = = = >       C h a n g e   d i r e c t o r y   t o   t h e   c l o n e d   r e p o s i t o r y " 
 c d   C o m f y U I 
 e c h o   " = = = = = = = = = >       C r e a t e   a n d   a c t i v a t e   v i r t u a l   e n v i r o n m e n t " 
 p y t h o n 3   - m   v e n v   v e n v 
 e c h o   " = = = = = = = = = >       A c t i v a t e   v i r t u a l   e n v i r o n m e n t " 
 s o u r c e   v e n v / b i n / a c t i v a t e 
 e c h o   " = = = = = = = = = >       I n s t a l l   t o r c h v i s i o n   i n s i d e   o f   v i r t u a l   e n v i r o n m e n t   " 
 . / v e n v / b i n / p i p   i n s t a l l   - - p r e   t o r c h   t o r c h v i s i o n   t o r c h a u d i o   - - i n d e x - u r l   h t t p s : / / d o w n l o a d . p y t o r c h . o r g / w h l / n i g h t l y / c p u 
   
 . / v e n v / b i n / p i p   i n s t a l l   - r   r e q u i r e m e n t s . t x t 
 e c h o   " = = = = = = = = = >       C h a n g e   d i r e c t o r y   t o   c u s t o m _ n o d e s " 
 c d   c u s t o m _ n o d e s   
 e c h o   " = = = = = = = = = >       C l o n e   C o m f y U I - M a n a g e r " 
 g i t   c l o n e   h t t p s : / / g i t h u b . c o m / l t d r d a t a / C o m f y U I - M a n a g e r . g i t 
 c d   '
 3 o    ����  0 thisfolderpath thisFolderPath
 1 m     < < � = =8 ' 
 e c h o   " = = = = = = = = = >       C h a n g e   d i r e c t o r y " 
 c d   C o m f y U I 
 k i l l _ s e r v e r _ o n _ p o r t   8 1 8 8 
 e c h o   " = = = = = = = = = >       S t a r t   C o n f y U I   i n s i a d e   o f   t h e   e n v i r o n m e n t   " 
 . / v e n v / b i n / p y t h o n   m a i n . p y   & 
 s l e e p   2 
 e c h o   " = = = = = = = = = > O p e n   B r o w s e r   " 
 o p e n   h t t p : / / 1 2 7 . 0 . 0 . 1 : 8 1 8 8 
 } 
   k i l l _ s e r v e r _ o n _ p o r t ( )   { 
         e c h o   " = = = = = = = = = >       C h e c k i n g   i f   a   s e r v e r   i s   r u n n i n g   o n   p o r t   $ 1 . . . " 
         s e r v e r _ p i d = $ ( l s o f   - i   : $ 1   |   g r e p   L I S T E N   |   a w k   ' { p r i n t   $ 2 } ' ) 
         i f   [   - n   " $ s e r v e r _ p i d "   ] ;   t h e n 
                 e c h o   " = = = = = = = = = >       S e r v e r   f o u n d   w i t h   P I D   $ s e r v e r _ p i d .   K i l l i n g   s e r v e r . . . " 
                 k i l l   - 9   $ s e r v e r _ p i d 
                 e c h o   " = = = = = = = = = >       S e r v e r   o n   p o r t   $ 1   h a s   b e e n   k i l l e d . " 
         e l s e 
                 e c h o   " = = = = = = = = = >       N o   s e r v e r   i s   c u r r e n t l y   r u n n i n g   o n   p o r t   $ 1 . " 
         f i 
 } 
 e c h o   " = = = = = = = = = = = = = = = = = = = = = = = = = = = >   I n s t a l l C o m f y U I     v . 0 . 9 . 0     < = = = = = = = = = = = = = = = = = = = = = = = = = = = " 
 i n s t a l l _ h o m e b r e w 
 
   

 / o      ���� 0 shellscript shellScript��  ��   ,  > ?
 > l     ��������  ��  ��   ?  @ A
 @ l     �� B C��   B + % Execute the shell script in Terminal    C � D D J   E x e c u t e   t h e   s h e l l   s c r i p t   i n   T e r m i n a l A  E F
 E l   0 G����
 G O    0 H I
 H k   " / J J  K L
 K I  " '������
�� .miscactvnull��� ��� null��  ��   L  M N
 M I  ( -�� O��
�� .coredoscnull��� ��� ctxt
 O o   ( )���� 0 shellscript shellScript��   N  P��
 P l  . .��������  ��  ��  ��  
 I m     Q Q�                                                                                      @ alis    J  Macintosh HD               ���BD ����Terminal.app                                                   �������        ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    M a c i n t o s h   H D  *System/Applications/Utilities/Terminal.app  / ��  ��  ��   F  R S
 R l     ��������  ��  ��   S  T��
 T l     ��������  ��  ��  ��       �� U V��   U ��
�� .aevtoappnull  �   � **** V �� W���� X Y��
�� .aevtoappnull  �   � ****
 W k     0 Z Z  
 [ [   \ \  + ] ]  E����  ��  ��   X   Y �������� "���� 8 : <�� Q����
�� 
rtyp
�� 
TEXT
�� .earsffdralis        afdr�� 0 thisfilepath thisFilePath
�� 
psxp��  0 thisfolderpath thisFolderPath�� 0 shellscript shellScript
�� .miscactvnull��� ��� null
�� .coredoscnull��� ��� ctxt�� 1)��l E�O��%�,E�O��%�%�%�%E�O� *j O�j 
OPU ascr  
��ޭ