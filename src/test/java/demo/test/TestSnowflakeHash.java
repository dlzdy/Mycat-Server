package demo.test;

import io.mycat.route.function.PartitionByLong;
import io.mycat.route.function.PartitionByMod;
import io.mycat.route.sequence.handler.IncrSequenceTimeHandler;

public class TestSnowflakeHash {
	public static void main(String[] args) {
		//hash();
		mod();
	}
	private static void mod() {
		IncrSequenceTimeHandler dd = new IncrSequenceTimeHandler();
		PartitionByMod pbm = new PartitionByMod();
		pbm.setCount(10);
		pbm.init();
		for (int i = 0; i < 10000; i++) {
			try {
				Thread.sleep(2);
			} catch (Exception e) {
				e.printStackTrace();
			}
			Long result = dd.nextId(null);
			System.out.println(result + "-->" + pbm.calculate(result + ""));
		}
	}

	/**
	 * hash
	 */
	private static void hash() {
		IncrSequenceTimeHandler dd = new IncrSequenceTimeHandler();
		PartitionByLong pbl = new PartitionByLong();
		pbl.setPartitionCount("1,1,1,1,1,1,1,1");
		pbl.setPartitionLength("128,128,128,128,128,128,128,128");
		pbl.init();
		for (int i = 0; i < 10000; i++) {
			try {
				//Thread.sleep(3);
			} catch (Exception e) {
				e.printStackTrace();
			}
			Long result = dd.nextId(null);
			System.out.println(result + "-->" + pbl.calculate(result + ""));
		}
	}

}
