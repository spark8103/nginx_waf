require 'init'

function waf_main()
    if ip_white_check() then
    elseif ip_black_check() then
    elseif agent_attack_check() then
    elseif cc_attack_check() then
    elseif cookie_attack_check() then
    elseif url_white_check() then
    elseif url_attack_check() then
    elseif args_attack_check() then
    --elseif post_attack_check() then
    else
        return
    end
end

if config_waf_enable == "on" then
    waf_main()
end
