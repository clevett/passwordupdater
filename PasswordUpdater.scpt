FasdUAS 1.101.10   ��   ��    k             l     ��  ��    B <# This script will check to see if the Keychain is unlocked.     � 	 	 x #   T h i s   s c r i p t   w i l l   c h e c k   t o   s e e   i f   t h e   K e y c h a i n   i s   u n l o c k e d .   
  
 l     ��  ��    w q# If it is not it will prompt the user for a password repeatably until it can unlock the Keychain or they cancel.     �   � #   I f   i t   i s   n o t   i t   w i l l   p r o m p t   t h e   u s e r   f o r   a   p a s s w o r d   r e p e a t a b l y   u n t i l   i t   c a n   u n l o c k   t h e   K e y c h a i n   o r   t h e y   c a n c e l .      l     ��  ��    X R# If it succeeds it will open the System Preferences and press the Change Password     �   � #   I f   i t   s u c c e e d s   i t   w i l l   o p e n   t h e   S y s t e m   P r e f e r e n c e s   a n d   p r e s s   t h e   C h a n g e   P a s s w o r d      l     ��������  ��  ��        l     ��  ��    i c# Check to see if the Keychain is unlocked already. Script passes the word "Toast" as the password.     �   � #   C h e c k   t o   s e e   i f   t h e   K e y c h a i n   i s   u n l o c k e d   a l r e a d y .   S c r i p t   p a s s e s   t h e   w o r d   " T o a s t "   a s   t h e   p a s s w o r d .      l     ��  ��    M G# If the Keychain is already unlocked the command set keychain to true.     �   � #   I f   t h e   K e y c h a i n   i s   a l r e a d y   u n l o c k e d   t h e   c o m m a n d   s e t   k e y c h a i n   t o   t r u e .     !   l     "���� " Q      # $ % # k     & &  ' ( ' I   �� )��
�� .sysoexecTEXT���     TEXT ) b    
 * + * b     , - , b     . / . m     0 0 � 1 1 8 s e c u r i t y   u n l o c k - k e y c h a i n   - p   / m     2 2 � 3 3  " - m     4 4 � 5 5 
 T o a s t + m    	 6 6 � 7 7  "��   (  8�� 8 r     9 : 9 m    ��
�� boovtrue : o      ���� 0 keychain  ��   $ R      ������
�� .ascrerr ****      � ****��  ��   % r     ; < ; m    ��
�� boovfals < o      ���� 0 keychain  ��  ��   !  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A K E# If the Keychain is locked the user will be prompted for a password.    B � C C � #   I f   t h e   K e y c h a i n   i s   l o c k e d   t h e   u s e r   w i l l   b e   p r o m p t e d   f o r   a   p a s s w o r d . @  D E D l     �� F G��   F T N# This will repeat forever until the user cancels or the shell script succeeds    G � H H � #   T h i s   w i l l   r e p e a t   f o r e v e r   u n t i l   t h e   u s e r   c a n c e l s   o r   t h e   s h e l l   s c r i p t   s u c c e e d s E  I J I l   ! K���� K r    ! L M L m     N N � O O < P l e a s e   e n t e r   c u r r e n t   p a s s w o r d : M o      ���� 
0 prompt  ��  ��   J  P Q P l  " � R���� R W   " � S T S k   * � U U  V W V r   * ] X Y X l 	 * Y Z���� Z I  * Y�� [ \
�� .sysodlogaskr        TEXT [ l 
 * + ]���� ] o   * +���� 
0 prompt  ��  ��   \ �� ^ _
�� 
appr ^ m   , - ` ` � a a   P a s s w o r d   C h a n g e r _ �� b c
�� 
btns b J   . 2 d d  e f e m   . / g g � h h  C a n c e l f  i�� i m   / 0 j j � k k  U n l o c k��   c �� l m
�� 
dflt l l 
 3 4 n���� n m   3 4���� ��  ��   m �� o p
�� 
disp o 4   7 I�� q
�� 
alis q l 
 ; H r���� r l  ; H s���� s c   ; H t u t b   ; D v w v l  ; @ x���� x I  ; @�� y��
�� .earsffdralis        afdr y  f   ; <��  ��  ��   w m   @ C z z � { { < C o n t e n t s : R e s o u r c e s : a p p l e t . i c n s u m   D G��
�� 
TEXT��  ��  ��  ��   p �� | }
�� 
dtxt | m   L O ~ ~ �     } �� ���
�� 
htxt � m   R S��
�� boovtrue��  ��  ��   Y o      ���� 0 dialogresult dialogResult W  � � � r   ^ i � � � n   ^ e � � � 1   a e��
�� 
ttxt � o   ^ a���� 0 dialogresult dialogResult � o      ���� 0 oldpassword   �  � � � l  j j��������  ��  ��   �  � � � l  j j�� � ���   � _ Y#Use old password to unlock Keychain. If it fails change the prompt to let the user know.    � � � � � # U s e   o l d   p a s s w o r d   t o   u n l o c k   K e y c h a i n .   I f   i t   f a i l s   c h a n g e   t h e   p r o m p t   t o   l e t   t h e   u s e r   k n o w . �  ��� � Q   j � � � � � k   m � � �  � � � I  m ��� ���
�� .sysoexecTEXT���     TEXT � b   m | � � � b   m x � � � b   m t � � � m   m p � � � � � 8 s e c u r i t y   u n l o c k - k e y c h a i n   - p   � m   p s � � � � �  " � o   t w���� 0 oldpassword   � m   x { � � � � �  "��   �  ��� � r   � � � � � m   � ���
�� boovtrue � o      ���� 0 keychain  ��   � R      ������
�� .ascrerr ****      � ****��  ��   � k   � � � �  � � � r   � � � � � m   � ���
�� boovfals � o      ���� 0 keychain   �  ��� � r   � � � � � m   � � � � � � � j P a s s w o r d   f a i l e d   t o   u n l o c k   k e y c h a i n .   P l e a s e   t r y   a g a i n . � o      ���� 
0 prompt  ��  ��   T =   & ) � � � o   & '���� 0 keychain   � m   ' (��
�� boovtrue��  ��   Q  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � < 6#Force kill the Keychain Access use of "login" prompt.    � � � � l # F o r c e   k i l l   t h e   K e y c h a i n   A c c e s s   u s e   o f   " l o g i n "   p r o m p t . �  � � � l  � � ����� � Q   � � � ��� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � m   � � � � � � � 2 k i l l a l l   ' K e y c h a i n   A c c e s s '��   � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � c ]#If the Keychain is now unlocked open System Preferences and press the Change Password button    � � � � � # I f   t h e   K e y c h a i n   i s   n o w   u n l o c k e d   o p e n   S y s t e m   P r e f e r e n c e s   a n d   p r e s s   t h e   C h a n g e   P a s s w o r d   b u t t o n �  ��� � l  � ����� � Z  � � ����� � =   � � � � � o   � ����� 0 keychain   � m   � ���
�� boovtrue � O   � � � � k   � � �  � � � I  � �������
�� .miscactvnull��� ��� null��  ��   �  � � � r   � � � � � 5   � ��� ���
�� 
xppb � m   � � � � � � � 6 c o m . a p p l e . p r e f e r e n c e s . u s e r s
�� kfrmID   � l      ����� � 1   � ���
�� 
xpcp��  ��   �  � � � I  � ��� ���
�� .miscmvisnull���     **** � n   � � � � � 4   � ��� �
�� 
xppa � m   � � � � � � �  p a s s w o r d P r e f � 5   � ��� ���
�� 
xppb � m   � � � � � � � 6 c o m . a p p l e . p r e f e r e n c e s . u s e r s
�� kfrmID  ��   �  ��� � O   � � � � O   � � � � I  ��� ���
�� .prcsclicnull��� ��� uiel � n   � � � � 4  �� �
�� 
butT � m  	 � � � � �   C h a n g e   P a s s w o r d & � n   � � � � 4  �� �
�� 
tabg � m  ����  � 4   ��� �
�� 
cwin � m   � ���� ��   � 4   � ��� �
�� 
prcs � m   � � � � � � � $ S y s t e m   P r e f e r e n c e s � m   � � � ��                                                                                  sevs  alis    �  Cheeto's Mac               �8q�H+     �System Events.app                                               rЎ�        ����  	                CoreServices    �8�)      Ў�a       �   �   �  =Cheeto's Mac:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    C h e e t o ' s   M a c  -System/Library/CoreServices/System Events.app   / ��  ��   � m   � � � ��                                                                                  sprf  alis    ~  Cheeto's Mac               �8q�H+     �System Preferences.app                                           ��A@/        ����  	                Applications    �8�)      �A�       �  1Cheeto's Mac:Applications: System Preferences.app   .  S y s t e m   P r e f e r e n c e s . a p p    C h e e t o ' s   M a c  #Applications/System Preferences.app   / ��  ��  ��  ��  ��  ��       � � ��   � �~
�~ .aevtoappnull  �   � **** � �} ��|�{ � ��z
�} .aevtoappnull  �   � **** � k     � �    � �  I    P  �  ��y�y  �|  �{   �   � 4 0 2 4 6�x�w�v�u N�t�s `�r g j�q�p�o�n z�m�l ~�k�j�i�h�g�f � � � � � ��e�d ��c�b ��a ��` ��_ ��^�]�\ ��[
�x .sysoexecTEXT���     TEXT�w 0 keychain  �v  �u  �t 
0 prompt  
�s 
appr
�r 
btns
�q 
dflt
�p 
disp
�o 
alis
�n .earsffdralis        afdr
�m 
TEXT
�l 
dtxt
�k 
htxt�j 
�i .sysodlogaskr        TEXT�h 0 dialogresult dialogResult
�g 
ttxt�f 0 oldpassword  
�e .miscactvnull��� ��� null
�d 
xppb
�c kfrmID  
�b 
xpcp
�a 
xppa
�` .miscmvisnull���     ****
�_ 
prcs
�^ 
cwin
�] 
tabg
�\ 
butT
�[ .prcsclicnull��� ��� uiel�z ��%�%�%j OeE�W 
X  fE�O�E�O wh�e ������lv�la *a )j a %a &/a a a ea  E` O_ a ,E` O a a %_ %a %j OeE�W X  fE�Oa  E�[OY��O a !j W X  hO�e  da " Z*j #O*a $a %a &0*a ',FO*a $a (a &0a )a */j +Oa , $*a -a ./ *a /k/a 0k/a 1a 2/j 3UUUY hascr  ��ޭ