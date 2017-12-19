package com.zjkh.zgm.facade.model;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Date;

@TableName("blog")
@Data
public class Blog implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(type = IdType.UUID)
    private Integer id;

    /**
     * 标题
     */
    private String title;

    /**
     * 发布时间
     */
    private Date releaseDate;

    /**
     * 内容
     */
    private String content;

    /**
     * 发布人
     */
    private String releaseBy;


}
