package org.seckill.dao;

import org.seckill.model.SuccessKilled;

/**
 * Created by dongyangli on 2018/1/1.
 */
public interface SuccessKilledDao {

    int insertSuccessKilled(long seckillId, long userPhone);

    SuccessKilled queryByIdWithSeckill(long seckillId);
}
