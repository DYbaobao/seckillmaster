package org.seckill.dao;

import org.apache.ibatis.annotations.Param;
import org.seckill.model.Seckill;

import java.util.Date;
import java.util.List;

/**
 * Created by dongyangli on 2018/1/1.
 */
public interface SeckillDao {
   /*
   * 减库存
   * */
    int reduceNumber(@Param("seckillId") long seckillId,@Param("killTime") Date killTime);

    /*
    * 根据id查询秒杀对象
    *
    * */
    Seckill queryById(long seckillId);

    List<Seckill> queryAll(@Param("offset") int offset,@Param("limit") int limit);
}
