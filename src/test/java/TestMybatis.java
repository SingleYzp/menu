import com.restaurant.model.Staff;
import com.restaurant.service.IStaffService;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml" })
public class TestMybatis {

	private static final Logger logger = Logger.getLogger(TestMybatis.class);

	@Resource
	private IStaffService staffService;


	@Test
	public void test1() {
		Staff staff = this.staffService.getStaffById(1);
		List<Staff> staffList = this.staffService.getStaffByPosition("customer");
		logger.info(staff.getStaName()+"  "+staff.getStaPhone()+" " + staff.getStaPosition() );
		for(Staff i : staffList) {
			logger.info(i.getStaName()+" " + i.getStaPhone() );
		}
	}
}
