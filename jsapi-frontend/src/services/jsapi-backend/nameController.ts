// @ts-ignore
/* eslint-disable */
import { request } from '@umijs/max';

/** getNameByGet GET /api/name/ */
export async function getNameByGetUsingGet(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getNameByGetUsingGETParams,
  options?: { [key: string]: any },
) {
  return request<string>('/api/name/', {
    method: 'GET',
    params: {
      ...params,
    },
    ...(options || {}),
  });
}

/** getNameByPost POST /api/name/ */
export async function getNameByPostUsingPost(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getNameByPostUsingPOSTParams,
  options?: { [key: string]: any },
) {
  return request<string>('/api/name/', {
    method: 'POST',
    params: {
      ...params,
    },
    ...(options || {}),
  });
}

/** getUserNameByPost POST /api/name/user */
export async function getUserNameByPostUsingPost(body: API.User, options?: { [key: string]: any }) {
  return request<string>('/api/name/user', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}
