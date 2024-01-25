package com.sankuai.sec.outsend.fortest.starter.controller;

import com.meituan.mdp.boot.starter.web.response.WebResponse;
import org.springframework.web.bind.annotation.*;

/**
 * @author: qihe
 * @Description:
 * @Date: 2:34 PM 2024/1/25
 * @Modified By:
 */
@ResponseBody
@RestController
@RequestMapping("/backdoor")
public class BackdoorController {

    @GetMapping("/query/user")
    public WebResponse queryUserInfo(String uid) throws Exception {
        // balbala
        return WebResponse.buildData(null);
    }
}
