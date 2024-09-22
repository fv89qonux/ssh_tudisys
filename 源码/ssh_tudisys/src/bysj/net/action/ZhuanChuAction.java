package bysj.net.action;

import java.text.SimpleDateFormat;
import java.util.*;

import bysj.net.model.*;
import bysj.net.manager.ObjectManager;
import com.opensymphony.xwork2.*;

import bysj.net.util.PageModel;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

@SuppressWarnings({ "unchecked", "serial" })
public class ZhuanChuAction extends ActionSupport {
	private ZhuanChu util;
	private PageModel<ZhuanChu> pageModel;
	private List<DangAn> listDangAn;
	private List<User> listUser;
	private String errMsg;
	private String field;
	private String fieldValue;
	private ObjectManager objectManager;

	public String initUtil() throws Exception {
		listDangAn = objectManager.getUtil("from DangAn where s_10 ='已转入'");
		listUser = objectManager.getUtil("from User");
		util = null;
		return "saveOrUpdate";
	}

	public String saveOrUpdateObject() throws Exception {
		if("".equals(util.getS_0()) || null == util.getS_0()){
			util.setS_0("ZC"+ new SimpleDateFormat("hhmmsss").format(new Date()));
		}
		DangAn dangAn = (DangAn) objectManager.getObject(new DangAn(), util.getDangAn().getId());
		dangAn.setS_10("已转出");
		objectManager.saveOrUpdateObject(dangAn);
		objectManager.saveOrUpdateObject(util);
		util = null;
		errMsg = null;
		return getAllUtil();
	}

	public String deleteManyUtil() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		String ids[] = request.getParameterValues("id");
		ZhuanChu util = null;
		for (String id : ids) {
			util = new ZhuanChu();
			util.setId(Integer.parseInt(id));
			objectManager.deleteObject(util);
		}
		util = null;
		return getAllUtil();
	}

	public String deleteUtil() throws Exception {
		objectManager.deleteObject(util);
		util = null;
		errMsg = null;
		return getAllUtil();
	}

	public String selectUtil() throws Exception {
		listDangAn = objectManager.getUtil("from DangAn");
		listUser = objectManager.getUtil("from User");
		util = (ZhuanChu) objectManager.getObject(new ZhuanChu(), util.getId());
		return "saveOrUpdate";
	}

	public String getAllUtil() throws Exception {
		 Map session = ActionContext.getContext().getSession();
		 String type = (String) session.get("type");
		 int id = (Integer) session.get("id");
		if (null == pageModel) {
			pageModel = new PageModel<ZhuanChu>();
		}
		if (0 == pageModel.getCurrentPageNo()) {
			pageModel.setCurrentPageNo(1);
		}
		StringBuilder _sql = new StringBuilder();
		_sql.append(" from ZhuanChu where 1 = 1 ");
		 if (!"admin".equals(type)) {
			 _sql.append(" and dangAn.user.id = " + id);
		 }
		if (null != field && field.trim().length() > 0) {
			fieldValue = new String(fieldValue.getBytes("iso-8859-1"), "utf-8");
			_sql.append(" and " + field + " like '%" + fieldValue + "%'");
		}
		pageModel = objectManager.getUtil(_sql.toString(),
				pageModel.getCurrentPageNo());
		errMsg = null;
		return "find";
	}

	public ZhuanChu getUtil() {
		return util;
	}

	public void setUtil(ZhuanChu util) {
		this.util = util;
	}

	public String getErrMsg() {
		return errMsg;
	}

	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getFieldValue() {
		return fieldValue;
	}

	public void setFieldValue(String fieldValue) {
		this.fieldValue = fieldValue;
	}

	public ObjectManager getObjectManager() {
		return objectManager;
	}

	public void setObjectManager(ObjectManager objectManager) {
		this.objectManager = objectManager;
	}

	public PageModel<ZhuanChu> getPageModel() {
		return pageModel;
	}

	public void setPageModel(PageModel<ZhuanChu> pageModel) {
		this.pageModel = pageModel;
	}

	public List<DangAn> getListDangAn() {
		return listDangAn;
	}

	public void setListDangAn(List<DangAn> listDangAn) {
		this.listDangAn = listDangAn;
	}

	public List<User> getListUser() {
		return listUser;
	}

	public void setListUser(List<User> listUser) {
		this.listUser = listUser;
	}

}
