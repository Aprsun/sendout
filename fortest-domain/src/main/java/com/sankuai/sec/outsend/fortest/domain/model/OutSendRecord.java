package com.sankuai.sec.outsend.fortest.domain.model;

import lombok.Builder;
import lombok.Data;

/**
 * @author: qihe
 * @Description:
 * @Date: 2:31 PM 2024/1/25
 * @Modified By:
 */
@Data
@Builder
public class OutSendRecord {
    private String dateTime;
    private String misId;
    private String fileName;
    private String type;
    private String fileSize;
    private String secretLevel;
}
