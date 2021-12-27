; 左右 Win キーの空打ちで IME の OFF/ON を切り替える
;
; 左 Win キーの空打ちで IME を「英数」に切り替え
; 右 Win キーの空打ちで IME を「かな」に切り替え
; Win キーを押している間に他のキーを打つと通常の Win キーとして動作
;
; Author:     karakaram   http://www.karakaram.com/Win-ime-on-off

#Include IME.ahk

; Razer Synapseなど、キーカスタマイズ系のツールを併用しているときのエラー対策
#MaxHotkeysPerInterval 350

; 主要なキーを HotKey に設定し、何もせずパススルーする
*~a::
*~b::
*~c::
*~d::
*~e::
*~f::
*~g::
*~h::
*~i::
*~j::
*~k::
*~l::
*~m::
*~n::
*~o::
*~p::
*~q::
*~r::
*~s::
*~t::
*~u::
*~v::
*~w::
*~x::
*~y::
*~z::
*~1::
*~2::
*~3::
*~4::
*~5::
*~6::
*~7::
*~8::
*~9::
*~0::
*~F1::
*~F2::
*~F3::
*~F4::
*~F5::
*~F6::
*~F7::
*~F8::
*~F9::
*~F10::
*~F11::
*~F12::
*~`::
*~~::
*~!::
*~@::
*~#::
*~$::
*~%::
*~^::
*~&::
*~*::
*~(::
*~)::
*~-::
*~_::
*~=::
*~+::
*~[::
*~{::
*~]::
*~}::
*~\::
*~|::
*~;::
*~'::
*~"::
*~,::
*~<::
*~.::
*~>::
*~/::
*~?::
*~Esc::
*~Tab::
*~Space::
*~Left::
*~Right::
*~Up::
*~Down::
*~Enter::
*~PrintScreen::
*~Delete::
*~Home::
*~End::
*~PgUp::
*~PgDn::
    Return

; 上部メニューがアクティブになるのを抑制
*~LWin::Send {Blind}{vk07}
*~RWin::Send {Blind}{vk07}

; 左 Win 空打ちで IME を OFF
LWin up::
    if (A_PriorHotkey == "*~LWin")
    {
        IME_SET(0)
    }
    Return

; 右 Win 空打ちで IME を ON
RWin up::
    if (A_PriorHotkey == "*~RWin")
    {
        IME_SET(1)
    }
    Return
