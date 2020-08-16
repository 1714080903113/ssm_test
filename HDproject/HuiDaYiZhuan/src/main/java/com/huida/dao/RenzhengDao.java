package com.huida.dao;

import com.huida.bean.Renzheng;
import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

@Repository
public interface RenzhengDao {

    @Insert("insert into renzheng(finalImgUrl,openID) values(#{finalImgUrl},#{openID})" )
    public void insert(Renzheng renzheng);
}
