package com.dx.utils.jdbc;

import java.sql.Connection;

import org.junit.Test;

import com.dx.utils.JDBCUtils;

public class JdbcC3p0 {
	/**
	 * 测试c3p0连接mysql8
	 * @throws Exception
	 */
	@Test
	public void testConn() throws Exception{
		Connection connection = JDBCUtils.getConnection();
		System.out.println(connection);
	}
	
	
}
